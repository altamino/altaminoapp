.class public Loa/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channelName:Ljava/lang/String;

.field private previewUrl:Ljava/lang/String;

.field private startTimeSeconds:I

.field private title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Loa/n;->previewUrl:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Loa/n;->title:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, p0, Loa/n;->startTimeSeconds:I

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/n;->channelName:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/n;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/n;->url:Ljava/lang/String;

    return-void
.end method
