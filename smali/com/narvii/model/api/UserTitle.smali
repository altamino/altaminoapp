.class public Lcom/narvii/model/api/UserTitle;
.super Ljava/lang/Object;
.source "UserTitle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/api/UserTitle$UserTitleColorSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/model/api/UserTitle;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_CHARS:I = 0x14

.field public static final TYPE_FANS_OF_INFLUENCER:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_ROLE:I = 0x1

.field public static final TYPE_VERIFIED:I = 0x3


# instance fields
.field public color:I
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/model/api/UserTitle$UserTitleColorSerializer;
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/narvii/model/api/UserTitle;->type:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/model/api/UserTitle;)I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    invoke-virtual {p0, p1}, Lcom/narvii/model/api/UserTitle;->compareTo(Lcom/narvii/model/api/UserTitle;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/api/UserTitle;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 52
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 53
    iget v1, p1, Lcom/narvii/model/api/UserTitle;->type:I

    iget v3, p0, Lcom/narvii/model/api/UserTitle;->type:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget p1, p1, Lcom/narvii/model/api/UserTitle;->color:I

    iget v1, p0, Lcom/narvii/model/api/UserTitle;->color:I

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const-string v0, ""

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
