.class public Lcom/narvii/topic/model/StorySections;
.super Lcom/narvii/model/NVObject;
.source "StorySections.java"


# static fields
.field public static final SECTION_KEY_LATEST:Ljava/lang/String; = "LATEST"

.field public static final SECTION_KEY_POPULAR:Ljava/lang/String; = "POPULAR"

.field public static final SECTION_KEY_RECOMMEND:Ljava/lang/String; = "RECOMMENDATION"

.field public static feedKeyApiMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static feedKeyTitleMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blogList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentUsing = Lcom/narvii/model/Blog$BlogDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field public feedCategoryKey:Ljava/lang/String;

.field public paging:Lcom/narvii/model/api/Pagination;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyTitleMapper:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    .line 29
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyTitleMapper:Ljava/util/HashMap;

    const v1, 0x7f0f1057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "POPULAR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyTitleMapper:Ljava/util/HashMap;

    const v1, 0x7f0f1056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "LATEST"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyTitleMapper:Ljava/util/HashMap;

    const v1, 0x7f0f1058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "RECOMMENDATION"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    const-string v1, "popular"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    const-string v1, "latest"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    const-string v1, "recommendation"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public static getSectionTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyTitleMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyTitleMapper:Ljava/util/HashMap;

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getSectionTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/topic/model/StorySections;->feedCategoryKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/topic/model/StorySections;->getSectionTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
