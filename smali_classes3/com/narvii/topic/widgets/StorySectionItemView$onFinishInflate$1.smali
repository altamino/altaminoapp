.class final Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;
.super Ljava/lang/Object;
.source "StorySectionItemView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/StorySectionItemView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorySectionItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorySectionItemView.kt\ncom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1\n*L\n1#1,333:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/StorySectionItemView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->getAdapter()Lcom/narvii/logging/Area;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    instance-of v0, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/narvii/app/NVContext;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->refresh:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-static {v0}, Lcom/narvii/topic/widgets/StorySectionItemView;->access$areaName(Lcom/narvii/topic/widgets/StorySectionItemView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->onRefresh()V

    return-void
.end method
