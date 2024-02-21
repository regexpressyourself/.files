"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __spreadArrays = (this && this.__spreadArrays) || function () {
    for (var s = 0, i = 0, il = arguments.length; i < il; i++) s += arguments[i].length;
    for (var r = Array(s), k = 0, i = 0; i < il; i++)
        for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
            r[k] = a[j];
    return r;
};
exports.__esModule = true;
var path = require("path");
var fs = require("fs");
var node_fetch_1 = require("node-fetch");
var MAX_RESULTS = 40;
var MAX_PAGES = 5;
function _search(query, page) {
    if (page === void 0) { page = 1; }
    return __awaiter(this, void 0, void 0, function () {
        var q, url;
        var _this = this;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    q = encodeURIComponent(query);
                    url = "https://www.asciiur.com/api/?q=" + q + "&pg=" + page;
                    console.error("[fetch] " + url);
                    return [4 /*yield*/, node_fetch_1["default"](url)
                            .then(function (res) { return res.json(); })
                            .then(function (json) { return __awaiter(_this, void 0, void 0, function () {
                            var _a;
                            return __generator(this, function (_b) {
                                switch (_b.label) {
                                    case 0:
                                        if (!json)
                                            return [2 /*return*/, []];
                                        if (!(json.length == MAX_RESULTS && page < MAX_PAGES)) return [3 /*break*/, 2];
                                        _a = [json];
                                        return [4 /*yield*/, _search(query, page + 1)];
                                    case 1: return [2 /*return*/, __spreadArrays.apply(void 0, _a.concat([(_b.sent())]))];
                                    case 2: return [2 /*return*/, json];
                                }
                            });
                        }); })];
                case 1: return [2 /*return*/, _a.sent()];
            }
        });
    });
}
function search(query) {
    return __awaiter(this, void 0, void 0, function () {
        var cacheDir, cacheFile, ret;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    cacheDir = path.resolve(__dirname, "cache");
                    cacheFile = path.resolve(cacheDir, "ascii.json");
                    if (!fs.existsSync(cacheDir)) {
                        fs.mkdirSync(cacheDir);
                    }
                    if (!!fs.existsSync(cacheFile)) return [3 /*break*/, 2];
                    return [4 /*yield*/, _search(query)];
                case 1:
                    ret = _a.sent();
                    fs.writeFileSync(cacheFile, JSON.stringify(ret));
                    return [2 /*return*/, ret];
                case 2: return [2 /*return*/, JSON.parse(fs.readFileSync(cacheFile).toString())];
            }
        });
    });
}
function searchOne(query) {
    return __awaiter(this, void 0, void 0, function () {
        var arts, art, lines, width;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, search(query)];
                case 1:
                    arts = _a.sent();
                    if (!arts.length)
                        return [2 /*return*/];
                    art = arts[Math.floor(Math.random() * arts.length)].art.replace(/\r/g, "");
                    lines = art.split(/\r?\n/);
                    width = Math.max.apply(Math, lines.map(function (l) { return l.length; }));
                    while (width > 50) {
                        art = arts[Math.floor(Math.random() * arts.length)].art.replace(/\r/g, "");
                        lines = art.split(/\r?\n/);
                        width = Math.max.apply(Math, lines.map(function (l) { return l.length; }));
                    }
                    return [2 /*return*/];
            }
        });
    });
}
function filterAscii(query) {
    return __awaiter(this, void 0, void 0, function () {
        var arts, artBodys;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, search(query)];
                case 1:
                    arts = _a.sent();
                    if (!arts.length)
                        return [2 /*return*/];
                    artBodys = arts.map(function (art) { return art.art.replace(/\r/g, ""); });
                    console.log("{");
                    artBodys.forEach(function (art) {
                        var lines = art.split(/\r?\n/);
                        var height = lines.length;
                        var width = Math.max.apply(Math, lines.map(function (l) { return l.length; }));
                        art = arts[Math.floor(Math.random() * arts.length)].art.replace(/\r/g, "");
                        lines = art.split(/\r?\n/);
                        height = lines.length;
                        width = Math.max.apply(Math, lines.map(function (l) { return l.length; }));
                        if (height > 4 && height < 20 && width < 50) {
                            console.log('{"body":"');
                            console.log(lines.map(function (l) { return l.padEnd(width, " "); }).join("\n"));
                            console.log('"},');
                        }
                    });
                    console.log("}");
                    return [2 /*return*/];
            }
        });
    });
}
function run() {
    var args = process.argv.slice(2);
    for (var _i = 0, args_1 = args; _i < args_1.length; _i++) {
        var a = args_1[_i];
        if (a.startsWith("-")) {
            args.shift();
            switch (a) {
                case "-c":
                case "--cache":
                    return console.log(path.resolve(__dirname, "cache"));
                case "-h":
                case "--help":
                    console.log("splashcii keyword1 [keyword2] ...");
                    console.log("  --cache|-c   prints the cache directory. Simply delete it to clear the cache");
                    return;
                default:
                    if (a.startsWith("-"))
                        throw new Error("Invalid option " + a);
            }
        }
    }
    filterAscii(args.join(" ") + " ");
    return searchOne(args.join(" ") + " ");
}
try {
    run();
}
catch (error) {
    console.error("error: " + error.message);
    process.exit(1);
}
