.class public final synthetic Lcom/narvii/topic/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/TopicTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/k;->a:Lcom/narvii/topic/TopicTabFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/k;->a:Lcom/narvii/topic/TopicTabFragment;

    invoke-static {v0}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->a(Lcom/narvii/topic/TopicTabFragment;)V

    return-void
.end method
