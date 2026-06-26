.class Lcom/narvii/setting/AccountWebViewFragment$1;
.super Ljava/lang/Object;
.source "AccountWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/setting/AccountWebViewFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/setting/AccountWebViewFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/narvii/setting/AccountWebViewFragment;Landroid/app/Activity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$1;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    iput-object p2, p0, Lcom/narvii/setting/AccountWebViewFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
