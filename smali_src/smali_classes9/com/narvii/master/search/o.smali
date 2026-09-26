.class public final synthetic Lcom/narvii/master/search/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/a;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalTopicSearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/o;->a:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/o;->a:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->t(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
