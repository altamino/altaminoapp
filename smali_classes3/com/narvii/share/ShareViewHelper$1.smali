.class Lcom/narvii/share/ShareViewHelper$1;
.super Ljava/lang/Object;
.source "ShareViewHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareViewHelper;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/share/SharePayload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareViewHelper;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareViewHelper;Landroid/view/View;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$1;->this$0:Lcom/narvii/share/ShareViewHelper;

    iput-object p2, p0, Lcom/narvii/share/ShareViewHelper$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/share/SharePayload;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$1;->this$0:Lcom/narvii/share/ShareViewHelper;

    invoke-static {v0}, Lcom/narvii/share/ShareViewHelper;->access$000(Lcom/narvii/share/ShareViewHelper;)Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$1;->this$0:Lcom/narvii/share/ShareViewHelper;

    invoke-static {v0}, Lcom/narvii/share/ShareViewHelper;->access$000(Lcom/narvii/share/ShareViewHelper;)Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$1;->val$v:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/narvii/share/SharePayload;

    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareViewHelper$1;->call(Lcom/narvii/share/SharePayload;)V

    return-void
.end method
