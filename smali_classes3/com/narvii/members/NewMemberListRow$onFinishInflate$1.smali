.class final Lcom/narvii/members/NewMemberListRow$onFinishInflate$1;
.super Ljava/lang/Object;
.source "NewMemberListRow.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/members/NewMemberListRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/NewMemberListRow;


# direct methods
.method constructor <init>(Lcom/narvii/members/NewMemberListRow;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/members/NewMemberListRow$onFinishInflate$1;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow$onFinishInflate$1;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "NewestMembersSeeAll"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 40
    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow$onFinishInflate$1;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-static {p1}, Lcom/narvii/members/NewMemberListRow;->access$toAllNewMembersPage(Lcom/narvii/members/NewMemberListRow;)V

    return-void
.end method
