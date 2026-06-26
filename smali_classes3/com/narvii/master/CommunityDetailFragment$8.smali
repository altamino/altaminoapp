.class Lcom/narvii/master/CommunityDetailFragment$8;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->showMoreOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "Community Detail Menu"

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 861
    invoke-static {p2}, Lcom/narvii/master/CommunityDetailFragment;->access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 862
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->showBlockUser(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 863
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    goto :goto_0

    .line 855
    :cond_1
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 856
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 857
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p2}, Lcom/narvii/master/CommunityDetailFragment;->access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p2, v0}, Lcom/narvii/master/CommunityDetailFragment;->access$1100(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V

    .line 852
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
