.class Lcom/narvii/notice/ImportNoticeListAdapter$1$1;
.super Ljava/lang/Object;
.source "ImportNoticeListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/ImportNoticeListAdapter$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/notice/ImportNoticeListAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/notice/ImportNoticeListAdapter$1;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1$1;->this$1:Lcom/narvii/notice/ImportNoticeListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 506
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1$1;->this$1:Lcom/narvii/notice/ImportNoticeListAdapter$1;

    iget-object p1, p1, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    invoke-static {p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->access$100(Lcom/narvii/notice/ImportNoticeListAdapter;)V

    return-void
.end method
