.class Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->progress:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/videotemplate/VideoTemplateJni$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;F)F
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->progress:F

    .line 3
    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->progress:F

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onProgress(F)V

    .line 16
    :cond_0
    return-void
.end method
