.class Lcom/narvii/master/CommunityDetailFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Community Detail Menu"

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    if-eq p2, p1, :cond_1

    .line 8
    const/4 p1, 0x2

    .line 9
    .line 10
    if-eq p2, p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/master/CommunityDetailFragment;->B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->showBlockUser(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lcom/narvii/master/CommunityDetailFragment;->B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v0}, Lcom/narvii/master/CommunityDetailFragment;->P(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 69
    :goto_0
    return-void
.end method
