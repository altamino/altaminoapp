.class public Lcom/narvii/master/search/model/GlobalSearchResultSection;
.super Ljava/lang/Object;
.source "GlobalSearchResultSection.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    using = Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/model/GlobalSearchResultSection$SearchResultSectionDeserialize;
    }
.end annotation


# static fields
.field public static final SECTION_TYPE_POST:Ljava/lang/String; = "POST"

.field public static final SECTION_TYPE_STORY:Ljava/lang/String; = "STORY"

.field public static final SECTION_TYPE_TOPIC:Ljava/lang/String; = "TOPIC"


# instance fields
.field public communityInfoMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public hitsTotal:I

.field public objectSubType:I

.field public objectType:I

.field public resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/NVObject;",
            ">;"
        }
    .end annotation
.end field

.field public sectionType:Ljava/lang/String;

.field public userProfileMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
