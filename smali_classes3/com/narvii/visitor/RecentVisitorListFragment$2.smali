.class Lcom/narvii/visitor/RecentVisitorListFragment$2;
.super Ljava/lang/Object;
.source "RecentVisitorListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/RecentVisitorListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/RecentVisitorListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/RecentVisitorListFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$2;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$2;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SettingButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 198
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$2;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-static {p1}, Lcom/narvii/visitor/RecentVisitorListFragment;->access$100(Lcom/narvii/visitor/RecentVisitorListFragment;)V

    return-void
.end method
