.class final Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$6;
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


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/StorySectionItemView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$6;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/narvii/topic/widgets/StorySectionItemView$onFinishInflate$6;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    const-string v1, "v"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->openStoryDetailPage(Landroid/view/View;)V

    return-void
.end method
