.class Lcom/narvii/videotemplate/VideoTemplateJni$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateJni;->onErrorFromNative(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$errorType:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$1;->val$errorType:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
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
    iget v1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$1;->val$errorType:I

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    .line 10
    return-void
.end method
