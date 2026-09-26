.class public final Lcom/google/android/exoplayer2/i2$l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private roleFlags:I

.field private selectionFlags:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$l$a;->uri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$l;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$l;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$l$a;->uri:Landroid/net/Uri;

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$l;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$l$a;->mimeType:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$l;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$l$a;->language:Ljava/lang/String;

    .line 7
    iget v0, p1, Lcom/google/android/exoplayer2/i2$l;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/i2$l$a;->selectionFlags:I

    .line 8
    iget v0, p1, Lcom/google/android/exoplayer2/i2$l;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/i2$l$a;->roleFlags:I

    .line 9
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$l;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$l$a;->label:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2$l;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$l$a;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$l;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$l$a;-><init>(Lcom/google/android/exoplayer2/i2$l;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/i2$l$a;)Lcom/google/android/exoplayer2/i2$k;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i2$l$a;->i()Lcom/google/android/exoplayer2/i2$k;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/i2$l$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->uri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/i2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->mimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/i2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->language:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/i2$l$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->selectionFlags:I

    .line 3
    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/i2$l$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->roleFlags:I

    .line 3
    return p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/i2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->label:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/i2$l$a;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$l$a;->id:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method private i()Lcom/google/android/exoplayer2/i2$k;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$k;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$k;-><init>(Lcom/google/android/exoplayer2/i2$l$a;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method
