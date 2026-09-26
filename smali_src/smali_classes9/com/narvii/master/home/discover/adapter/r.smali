.class public final synthetic Lcom/narvii/master/home/discover/adapter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/r;->a:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/r;->a:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->g(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    return-void
.end method
