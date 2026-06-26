.class Lcom/narvii/post/entry/PostEntryDialog$8;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->inflateView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$8;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 421
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$8;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-virtual {p1}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    return-void
.end method
