// To parse this JSON data, do
//
//     final jobsResponse = jobsResponseFromJson(jsonString);

import 'dart:convert';

class JobsResponse {
    JobsResponse({
        required this.jobsResponseClass,
        required this.leaderboard,
    });

    String jobsResponseClass;
    List<Leaderboard> leaderboard;

    factory JobsResponse.fromRawJson(String str) => JobsResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory JobsResponse.fromJson(Map<String, dynamic> json) => JobsResponse(
        jobsResponseClass: json["__CLASS__"],
        leaderboard: List<Leaderboard>.from(json["leaderboard"].map((x) => Leaderboard.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "__CLASS__": jobsResponseClass,
        "leaderboard": List<dynamic>.from(leaderboard.map((x) => x.toJson())),
    };
}

class Leaderboard {
    Leaderboard({
        required this.canonicalName,
        required this.count,
        required this.leaderboardClass,
    });

    String canonicalName;
    int count;
    String leaderboardClass;

    factory Leaderboard.fromRawJson(String str) => Leaderboard.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Leaderboard.fromJson(Map<String, dynamic> json) => Leaderboard(
        canonicalName: json["canonical_name"],
        count: json["count"],
        leaderboardClass: json["__CLASS__"],
    );

    Map<String, dynamic> toJson() => {
        "canonical_name": canonicalName,
        "count": count,
        "__CLASS__": leaderboardClass,
    };
}



// To parse this JSON data, do
//
//     final jobscategories = jobscategoriesFromMap(jsonString);



class Jobscategories {
    Jobscategories({
        required this.results,
        required this.jobscategoriesClass,
    });

    List<Result> results;
    String jobscategoriesClass;

    Jobscategories copyWith({
        List<Result>? results,
        String? jobscategoriesClass,
    }) => 
        Jobscategories(
            results: results ?? this.results,
            jobscategoriesClass: jobscategoriesClass ?? this.jobscategoriesClass,
        );

    factory Jobscategories.fromJson(String str) => Jobscategories.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Jobscategories.fromMap(Map<String, dynamic> json) => Jobscategories(
        results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        jobscategoriesClass: json["__CLASS__"],
    );

    Map<String, dynamic> toMap() => {
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
        "__CLASS__": jobscategoriesClass,
    };
}

class Result {
    Result({
        required this.resultClass,
        required this.label,
        required this.tag,
    });

    Class resultClass;
    String label;
    String tag;

    Result copyWith({
        required Class resultClass,
        String? label,
        String? tag,
    }) => 
        Result(
            resultClass: resultClass,
            label: label ?? this.label,
            tag: tag ?? this.tag,
        );

    factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        resultClass: classValues.map[json["__CLASS__"]] as Class,
        label: json["label"],
        tag: json["tag"],
    );

    Map<String, dynamic> toMap() => {
        "__CLASS__": classValues.reverse[resultClass],
        "label": label,
        "tag": tag,
    };
}

enum Class { ADZUNA_API_RESPONSE_CATEGORY }

final classValues = EnumValues({
    "Adzuna::API::Response::Category": Class.ADZUNA_API_RESPONSE_CATEGORY
});

class EnumValues<T> {
   late Map<String, T> map;
   late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
