.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;
.super Ljava/lang/Object;
.source "GlobalSearchOthersResultFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    iput-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 544
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/Feed;

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->access$shouldShowDownloadMasterDialog(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 547
    :cond_0
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->access$getContext$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 548
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method
