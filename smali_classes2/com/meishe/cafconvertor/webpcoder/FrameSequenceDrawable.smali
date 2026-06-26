.class public Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;,
        Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;,
        Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;
    }
.end annotation


# static fields
.field public static final LOOP_DEFAULT:I = 0x3

.field public static final LOOP_INF:I = 0x2

.field public static final LOOP_ONCE:I = 0x1

.field private static a:Ljava/lang/String;

.field public static sAllocatingBitmapProvider:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;


# instance fields
.field private A:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private final e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

.field private final f:Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/BitmapShader;

.field private i:Landroid/graphics/BitmapShader;

.field private final j:Landroid/graphics/Rect;

.field private k:Z

.field private final l:Ljava/lang/Object;

.field private final m:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

.field private n:Z

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:I

.field private w:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/lang/Runnable;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a:Ljava/lang/String;

    new-instance v0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$1;

    invoke-direct {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$1;-><init>()V

    sput-object v0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->sAllocatingBitmapProvider:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    return-void
.end method

.method public constructor <init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequence;)V
    .locals 1

    sget-object v0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->sAllocatingBitmapProvider:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;-><init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequence;Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequence;Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->n:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->s:I

    new-instance v1, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;

    invoke-direct {v1, p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;-><init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->x:Ljava/lang/Runnable;

    new-instance v1, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$3;

    invoke-direct {v1, p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$3;-><init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->y:Ljava/lang/Runnable;

    new-instance v1, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;

    invoke-direct {v1, p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$4;-><init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->z:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->a()Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    move-result-object v1

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->f:Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    invoke-virtual {p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getHeight()I

    move-result p1

    iput-object p2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->m:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    invoke-static {p2, v1, p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    invoke-static {p2, v1, p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->j:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->h:Landroid/graphics/BitmapShader;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->i:Landroid/graphics/BitmapShader;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->t:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    iget-object p2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->f:Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    invoke-direct {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    return p1
.end method

.method static synthetic a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;J)J
    .locals 0

    iput-wide p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->u:J

    return-wide p1
.end method

.method private static a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-interface {p0, p1, p2}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;->acquireBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid bitmap provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FrameSequence decoding thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->d:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform operation on recycled drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->n:Z

    return p0
.end method

.method static synthetic c(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)I
    .locals 0

    iget p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    return p0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;
    .locals 0

    iget-object p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->f:Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    return-object p0
.end method

.method static synthetic f(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)I
    .locals 0

    iget p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    return p0
.end method

.method static synthetic g(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)J
    .locals 2

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->t:J

    return-wide v0
.end method

.method static synthetic h(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;
    .locals 0

    iget-object p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->A:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;

    return-object p0
.end method

.method static synthetic i(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)J
    .locals 2

    iget-wide v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->u:J

    return-wide v0
.end method

.method static synthetic j(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;
    .locals 0

    iget-object p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->m:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    return-object p0
.end method

.method static synthetic k(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->w:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnAnimationListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->m:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b()V

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->n:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->f:Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;->destroy()V

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->m:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->m:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v3}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c:Landroid/os/HandlerThread;

    :cond_2
    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->d:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->x:Ljava/lang/Runnable;

    :cond_3
    invoke-virtual {p0, p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapProvider must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b()V

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_0

    iget-wide v6, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->u:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gtz v1, :cond_0

    iput v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    :cond_0
    invoke-virtual {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->p:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->i:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->h:Landroid/graphics/BitmapShader;

    iput-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->i:Landroid/graphics/BitmapShader;

    iput-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->h:Landroid/graphics/BitmapShader;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->t:J

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->r:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {v2}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getFrameCount()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->r:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->r:I

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->s:I

    if-ne v1, v6, :cond_2

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->r:I

    if-eq v1, v6, :cond_3

    :cond_2
    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->s:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->r:I

    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {v2}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getDefaultLoopCount()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v6, 0x0

    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->k:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->h:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->o:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->f:Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getFrameCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e:Lcom/meishe/cafconvertor/webpcoder/FrameSequence;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->n:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->stop()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->stop()V

    invoke-virtual {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->start()V

    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 1

    invoke-direct {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->r:I

    invoke-direct {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->v:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->q:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
