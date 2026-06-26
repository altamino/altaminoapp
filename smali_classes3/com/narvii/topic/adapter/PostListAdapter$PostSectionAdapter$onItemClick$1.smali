.class final Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;
.super Ljava/lang/Object;
.source "PostListAdapter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/Feed;

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->access$shouldShowDownloadMasterDialog(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    invoke-static {p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->access$getContext$p(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 235
    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method
