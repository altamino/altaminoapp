.class Lcom/narvii/post/entry/PostEntryDialog$10$1;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog$10;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/post/entry/PostEntryDialog$10;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog$10;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$10$1;->this$1:Lcom/narvii/post/entry/PostEntryDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 717
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$10$1;->this$1:Lcom/narvii/post/entry/PostEntryDialog$10;

    iget-object p1, p1, Lcom/narvii/post/entry/PostEntryDialog$10;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-virtual {p1}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    return-void
.end method
