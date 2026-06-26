.class final Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;
.super Ljava/lang/Object;
.source "FeedAdapter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/list/FeedAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/feed/list/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/list/FeedAdapter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    iput-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->flag:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 154
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;->this$0:Lcom/narvii/feed/list/FeedAdapter;

    invoke-static {p2}, Lcom/narvii/feed/list/FeedAdapter;->access$getContext$p(Lcom/narvii/feed/list/FeedAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 155
    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;->$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method
