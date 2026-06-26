.class Lcom/narvii/media/GiphyPickerFragment$4;
.super Ljava/lang/Object;
.source "GiphyPickerFragment.java"

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

    .line 339
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$4;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment$4;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$4;->val$thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
