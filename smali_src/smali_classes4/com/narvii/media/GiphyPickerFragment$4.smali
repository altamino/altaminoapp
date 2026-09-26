.class Lcom/narvii/media/GiphyPickerFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment;->pick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/GiphyPickerFragment;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment;Ljava/lang/Thread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$4;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment$4;->val$thread:Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$4;->val$thread:Ljava/lang/Thread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 6
    return-void
.end method
