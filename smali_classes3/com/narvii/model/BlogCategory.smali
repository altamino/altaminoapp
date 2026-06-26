.class public Lcom/narvii/model/BlogCategory;
.super Lcom/narvii/model/NVObject;
.source "BlogCategory.java"


# instance fields
.field public blogsCount:I

.field public categoryId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public modifiedTime:Ljava/lang/String;

.field public position:I

.field public status:I

.field public style:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/model/BlogCategory;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public objectTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "blog-category"

    return-object v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/model/BlogCategory;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
