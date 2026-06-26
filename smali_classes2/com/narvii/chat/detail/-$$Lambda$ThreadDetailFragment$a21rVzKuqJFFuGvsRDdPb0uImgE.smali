.class public final synthetic Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field private final synthetic f$1:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;->f$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;->f$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v1, p0, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->lambda$showPtgAndFansOnlyConflictDialog$0$ThreadDetailFragment(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
