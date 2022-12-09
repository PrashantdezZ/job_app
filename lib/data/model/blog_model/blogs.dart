// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

List<Blog> blogFromJson(String str) => List<Blog>.from(json.decode(str).map((x) => Blog.fromJson(x)));

String blogToJson(List<Blog> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blog {
    Blog({
        required this.id,
        required this.blogCategory,
        required this.blogTitle,
        required this.blogSubTitle,
        required this.featuredImage,
        required this.featuredImageAltText,
        required this.blogDescription,
        required this.slug,
        required this.focusKeyphrase,
        required this.tag,
        required this.metaDescription,
        required this.seoTitle,
        required this.createdAt,
        required this.schema,
        required this.isPublished,
    });

    int id;
    BlogCategory blogCategory;
    String blogTitle;
    String blogSubTitle;
    String featuredImage;
    String featuredImageAltText;
    String blogDescription;
    String slug;
    String focusKeyphrase;
    String tag;
    String metaDescription;
    String seoTitle;
    DateTime createdAt;
    Schema schema;
    bool isPublished;

    factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        blogCategory: BlogCategory.fromJson(json["blog_category"]),
        blogTitle: json["blog_title"],
        blogSubTitle: json["blog_sub_title"],
        featuredImage: json["featured_image"],
        featuredImageAltText: json["featured_image_alt_text"],
        blogDescription: json["blog_description"],
        slug: json["slug"],
        focusKeyphrase: json["focus_keyphrase"],
        tag: json["tag"],
        metaDescription: json["meta_description"],
        seoTitle: json["seo_title"],
        createdAt: DateTime.parse(json["created_at"]),
        schema: Schema.fromJson(json["schema"]),
        isPublished: json["is_published"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "blog_category": blogCategory.toJson(),
        "blog_title": blogTitle,
        "blog_sub_title": blogSubTitle,
        "featured_image": featuredImage,
        "featured_image_alt_text": featuredImageAltText,
        "blog_description": blogDescription,
        "slug": slug,
        "focus_keyphrase": focusKeyphrase,
        "tag": tag,
        "meta_description": metaDescription,
        "seo_title": seoTitle,
        "created_at": createdAt.toIso8601String(),
        "schema": schema.toJson(),
        "is_published": isPublished,
    };
}

class BlogCategory {
    BlogCategory({
        required this.id,
        required this.thumbnailUrl,
        required this.title,
        required this.urlSlug,
        required this.thumbnail,
        required this.description,
        required this.createdAt,
        required this.isActive,
    });

    int id;
    String thumbnailUrl;
    String title;
    String urlSlug;
    String thumbnail;
    String description;
    DateTime createdAt;
    bool isActive;

    factory BlogCategory.fromJson(Map<String, dynamic> json) => BlogCategory(
        id: json["id"],
        thumbnailUrl: json["thumbnail_url"],
        title: json["title"],
        urlSlug: json["url_slug"],
        thumbnail: json["thumbnail"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        isActive: json["is_active"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "thumbnail_url": thumbnailUrl,
        "title": title,
        "url_slug": urlSlug,
        "thumbnail": thumbnail,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "is_active": isActive,
    };
}

class Schema {
    Schema();

    factory Schema.fromJson(Map<String, dynamic> json) => Schema(
    );

    Map<String, dynamic> toJson() => {
    };
}
