.class final Lcom/narvii/notice/AggregationNoticeFragment$baseBinding$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/AggregationNoticeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/AggregationNoticeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/AggregationNoticeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment$baseBinding$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment$baseBinding$1;->this$0:Lcom/narvii/notice/AggregationNoticeFragment;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getBaseBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/notice/AggregationNoticeFragment$baseBinding$1;->invoke()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    move-result-object v0

    return-object v0
.end method
