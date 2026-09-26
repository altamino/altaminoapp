.class public final synthetic Lcom/narvii/community/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/community/AggregationBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/community/AggregationBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/a;->a:Lcom/narvii/community/AggregationBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/community/a;->a:Lcom/narvii/community/AggregationBaseFragment;

    invoke-static {v0}, Lcom/narvii/community/AggregationBaseFragment;->n(Lcom/narvii/community/AggregationBaseFragment;)V

    return-void
.end method
