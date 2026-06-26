.class Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;
.super Ljava/lang/Object;
.source "VideoTemplateJni.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/videotemplate/VideoTemplateJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressCallbackRunnable"
.end annotation


# instance fields
.field private progress:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->progress:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/videotemplate/VideoTemplateJni$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->progress:F

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    move-result-object v0

    iget v1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->progress:F

    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onProgress(F)V

    :cond_0
    return-void
.end method
