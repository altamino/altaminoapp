.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$4;
.super Lcom/narvii/list/SimpleViewAdapter;
.source "BubbleManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$4;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/SimpleViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b03fb

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 171
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "scrollSectionGroupId"

    const-string p3, "chat-bubble"

    .line 172
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Source"

    const-string p3, "More Chat Bubbles"

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
