.class Lcom/narvii/widget/TagEditFlowView$5;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/TagEditFlowView;->requestEdittextFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TagEditFlowView;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TagEditFlowView;Landroid/widget/EditText;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$5;->this$0:Lcom/narvii/widget/TagEditFlowView;

    iput-object p2, p0, Lcom/narvii/widget/TagEditFlowView$5;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$5;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
