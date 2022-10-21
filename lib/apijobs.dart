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



// To parse this JSON data, do
//
//     final jobs = jobsFromMap(jsonString);



class Jobs {
    Jobs({
        required this.the00Warning,
        required this.the0LegalNotice,
        required this.jobCount,
        required this.jobs,
    });

    String the00Warning;
    String the0LegalNotice;
    int jobCount;
    List<Job> jobs;

    Jobs copyWith({
        required String the00Warning,
        required String the0LegalNotice,
        required int jobCount,
        required List<Job> jobs,
    }) => 
        Jobs(
            the00Warning: the00Warning ?? this.the00Warning,
            the0LegalNotice: the0LegalNotice ?? this.the0LegalNotice,
            jobCount: jobCount ?? this.jobCount,
            jobs: jobs ?? this.jobs,
        );

    factory Jobs.fromJson(String str) => Jobs.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Jobs.fromMap(Map<String, dynamic> json) => Jobs(
        the00Warning: json["00-warning"],
        the0LegalNotice: json["0-legal-notice"],
        jobCount: json["job-count"],
        jobs: List<Job>.from(json["jobs"].map((x) => Job.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "00-warning": the00Warning,
        "0-legal-notice": the0LegalNotice,
        "job-count": jobCount,
        "jobs": List<dynamic>.from(jobs.map((x) => x.toMap())),
    };
}

class Job {
    Job({
        required this.id,
        required this.url,
        required this.title,
        required this.companyName,
        required this.companyLogo,
        required this.category,
        required this.tags,
        required this.jobType,
        required this.publicationDate,
        required this.candidateRequiredLocation,
        required this.salary,
        required this.description,
        required this.companyLogoUrl,
    });

    int id;
    String url;
    String title;
    String companyName;
    String companyLogo;
    Category category;
    List<String> tags;
    JobType jobType;
    DateTime publicationDate;
    String candidateRequiredLocation;
    String salary;
    String description;
    String companyLogoUrl;

    Job copyWith({
        required int id,
        required String url,
        required String title,
        required String companyName,
        required String companyLogo,
        required Category category,
        required List<String> tags,
        required JobType jobType,
        required DateTime publicationDate,
        required String candidateRequiredLocation,
        required String salary,
        required String description,
        required String companyLogoUrl,
    }) => 
        Job(
            id: id,
            url: url ?? this.url,
            title: title ?? this.title,
            companyName: companyName,
            companyLogo: companyLogo,
            category: category ?? this.category,
            tags: tags ?? this.tags,
            jobType: jobType ?? this.jobType,
            publicationDate: publicationDate,
            candidateRequiredLocation: candidateRequiredLocation,
            salary: salary ?? this.salary,
            description: description ?? this.description,
            companyLogoUrl: companyLogoUrl ?? this.companyLogoUrl,
        );

    factory Job.fromJson(String str) => Job.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Job.fromMap(Map<String, dynamic> json) => Job(
        id: json["id"],
        url: json["url"],
        title: json["title"],
        companyName: json["company_name"],
        companyLogo: json["company_logo"],
        category: categoryValues.map[json["category"]] as Category,
        tags: List<String>.from(json["tags"].map((x) => x)),
        jobType: jobTypeValues.map[json["job_type"]] as JobType,
        publicationDate: DateTime.parse(json["publication_date"]),
        candidateRequiredLocation: json["candidate_required_location"],
        salary: json["salary"],
        description: json["description"],
        companyLogoUrl: json["company_logo_url"] == null ? null : json["company_logo_url"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "url": url,
        "title": title,
        "company_name": companyName,
        "company_logo": companyLogo,
        "category": categoryValues.reverse[category],
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "job_type": jobTypeValues.reverse[jobType],
        "publication_date": publicationDate.toIso8601String(),
        "candidate_required_location": candidateRequiredLocation,
        "salary": salary,
        "description": description,
        "company_logo_url": companyLogoUrl == null ? null : companyLogoUrl,
    };
}

enum Category { DEV_OPS_SYSADMIN, SALES, CUSTOMER_SERVICE, SOFTWARE_DEVELOPMENT, DATA, ALL_OTHERS, DESIGN, FINANCE_LEGAL, WRITING, QA, HUMAN_RESOURCES, BUSINESS, PRODUCT, MARKETING }

final categoryValues = EnumValues({
    "All others": Category.ALL_OTHERS,
    "Business": Category.BUSINESS,
    "Customer Service": Category.CUSTOMER_SERVICE,
    "Data": Category.DATA,
    "Design": Category.DESIGN,
    "DevOps / Sysadmin": Category.DEV_OPS_SYSADMIN,
    "Finance / Legal": Category.FINANCE_LEGAL,
    "Human Resources": Category.HUMAN_RESOURCES,
    "Marketing": Category.MARKETING,
    "Product": Category.PRODUCT,
    "QA": Category.QA,
    "Sales": Category.SALES,
    "Software Development": Category.SOFTWARE_DEVELOPMENT,
    "Writing": Category.WRITING
});

enum JobType { FULL_TIME, CONTRACT, PART_TIME, FREELANCE, EMPTY, OTHER, INTERNSHIP }

final jobTypeValues = EnumValue({
    "contract": JobType.CONTRACT,
    "": JobType.EMPTY,
    "freelance": JobType.FREELANCE,
    "full_time": JobType.FULL_TIME,
    "internship": JobType.INTERNSHIP,
    "other": JobType.OTHER,
    "part_time": JobType.PART_TIME
});

class EnumValue<T> {
    Map<String, T> map;
   late Map<T, String> reverseMap;

    EnumValue(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
