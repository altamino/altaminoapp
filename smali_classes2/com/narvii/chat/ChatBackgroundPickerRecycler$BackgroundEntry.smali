.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;
.super Ljava/lang/Object;
.source "ChatBackgroundPickerRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatBackgroundPickerRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundEntry"
.end annotation


# instance fields
.field private backgroundMedia:Lcom/narvii/model/Media;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->backgroundMedia:Lcom/narvii/model/Media;

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->backgroundMedia:Lcom/narvii/model/Media;

    const/16 v1, 0x64

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 207
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->backgroundMedia:Lcom/narvii/model/Media;

    return-object p0
.end method
