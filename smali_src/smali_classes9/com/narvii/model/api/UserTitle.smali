.class public Lcom/narvii/model/api/UserTitle;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/model/api/UserTitle;->type:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/model/api/UserTitle;)I
    .locals 2

    iget-object v0, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

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

    .line 1
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    invoke-virtual {p0, p1}, Lcom/narvii/model/api/UserTitle;->compareTo(Lcom/narvii/model/api/UserTitle;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/api/UserTitle;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/model/api/UserTitle;->type:I

    .line 14
    .line 15
    iget v3, p0, Lcom/narvii/model/api/UserTitle;->type:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    move-object v1, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    :goto_0
    iget-object v4, p1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget p1, p1, Lcom/narvii/model/api/UserTitle;->color:I

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/model/api/UserTitle;->color:I

    .line 52
    .line 53
    if-ne p1, v1, :cond_3

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v0, v2

    .line 56
    :goto_2
    return v0

    .line 57
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
