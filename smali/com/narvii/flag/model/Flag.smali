.class public Lcom/narvii/flag/model/Flag;
.super Lcom/narvii/model/NVObject;
.source "Flag.java"


# static fields
.field public static final FLAG_RESOLVE_TYPE_CUSTOM:I = 0x64

.field public static final FLAG_RESOLVE_TYPE_INAPPROPRIATE_CONTENT:I = 0x2

.field public static final FLAG_RESOLVE_TYPE_KEEP:I = 0x0

.field public static final FLAG_RESOLVE_TYPE_OFF_TOPIC:I = 0x1

.field public static final FLAG_RESOLVE_TYPE_SPAM:I = 0x3

.field public static final FLAG_RESOLVE_TYPE_VIOLATION:I = 0x4

.field public static final FLAG_STATUS_NONE:I = 0x0

.field public static final FLAG_STATUS_PENDING:I = 0x1

.field public static final FLAG_STATUS_RESOLVED:I = 0x2

.field public static final FLAG_TYPE_HARASSMENT_N_TROLLING:I = 0x6d

.field public static final FLAG_TYPE_HATE_SPEECH_N_BIGOTRY:I = 0x6b

.field public static final FLAG_TYPE_INAPPROPRIATE_REQUESTS:I = 0x66

.field public static final FLAG_TYPE_NUDITY_N_PORNOGRAPHY:I = 0x6e

.field public static final FLAG_TYPE_SELF_INJURY_N_SUICIDE:I = 0x6c

.field public static final FLAG_TYPE_USER_IN_AUDIO_CHAT:I = 0x68

.field public static final FLAG_TYPE_USER_IN_VIDEO_CHAT:I = 0x69

.field public static final FLAG_TYPE_VIOLENT_GRAPHIC_CONTENT_OR_DANGEROUS_ACTIVITY:I = 0x6a

.field public static final TYPE_ART_THEFT:I = 0x3

.field public static final TYPE_BULLYING:I = 0x0

.field public static final TYPE_INAPPROPRIATE_CONTENT:I = 0x1

.field public static final TYPE_NONE:I = 0x3e7

.field public static final TYPE_OFF_TOPIC:I = 0x4

.field public static final TYPE_OTHERS:I = 0xc8

.field public static final TYPE_OTHERS_VV_CHAT:I = 0xc9

.field public static final TYPE_SEXUALLY_EXPLICIT:I = 0x64

.field public static final TYPE_SPAM:I = 0x2

.field public static final TYPE_TROLLING:I = 0x5

.field public static final TYPE_VIOLENT_CONTENT:I = 0x65


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public externalSource:Lcom/narvii/model/ExternalSource;

.field public flaggedCount:I

.field public flaggedTypes:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastResolvedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public objectUid:Ljava/lang/String;

.field public objectUser:Lcom/narvii/model/User;

.field public operator:Lcom/narvii/model/User;

.field public parentId:Ljava/lang/String;

.field public parentType:I

.field public reasonMessage:Ljava/lang/String;

.field public reasonType:I

.field public screenshotMediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public totalFlaggedCount:I

.field public totalFlaggedTypes:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public static getFlagType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const v0, 0x7f0f06c7

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x7f0f06d9

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const v0, 0x7f0f06f7

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const v0, 0x7f0f06e4

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const v0, 0x7f0f06f4

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x64

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const v0, 0x7f0f06ff

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x65

    if-eqz v0, :cond_5

    return v3

    :cond_5
    const v0, 0x7f0f06e5

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const v0, 0x7f0f06e3

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x4

    return p0

    :cond_7
    const v0, 0x7f0f06f3

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    const v0, 0x7f0f0700

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_9
    const v0, 0x7f0f06da

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0x66

    return p0

    :cond_a
    const v0, 0x7f0f06fe

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x6a

    return p0

    :cond_b
    const v0, 0x7f0f06d8

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p0, 0x6b

    return p0

    :cond_c
    const v0, 0x7f0f06f2

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x6c

    return p0

    :cond_d
    const v0, 0x7f0f06d7

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0x6d

    return p0

    :cond_e
    const v0, 0x7f0f06e2

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6e

    return p0

    :cond_f
    const/16 p0, 0x3e7

    return p0
.end method


# virtual methods
.method public getBlogType()I
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "objectSubtype"

    aput-object v3, v2, v1

    .line 187
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExternalOriginName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getFeedShowTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStrikeSpanStr(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "strikeCount"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const v2, -0xff3183

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const v2, -0xa59dd

    goto :goto_0

    :cond_1
    const v2, -0x2ffde5

    :goto_0
    const v4, 0x7f0f0cd9

    const v5, 0x7f0f0c08

    .line 138
    invoke-static {p1, v0, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, " "

    .line 140
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    new-instance v4, Lcom/narvii/util/text/TagSpan;

    invoke-direct {v4, v2, p1}, Lcom/narvii/util/text/TagSpan;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    const/16 v1, 0x21

    invoke-virtual {v0, v4, v3, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const v0, 0x7fffffff

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

    .line 116
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->objectUid:Ljava/lang/String;

    return-object v0
.end method
