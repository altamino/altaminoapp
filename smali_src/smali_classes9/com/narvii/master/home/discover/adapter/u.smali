.class public final synthetic Lcom/narvii/master/home/discover/adapter/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/u;->a:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/u;->a:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-static {v0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->g(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Lcom/narvii/util/RequestResult;)V

    return-void
.end method
