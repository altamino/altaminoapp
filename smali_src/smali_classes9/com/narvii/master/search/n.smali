.class public final synthetic Lcom/narvii/master/search/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalTopicSearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/n;->a:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/n;->a:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->u(Lcom/narvii/master/search/GlobalTopicSearchFragment;Ljava/lang/String;)V

    return-void
.end method
