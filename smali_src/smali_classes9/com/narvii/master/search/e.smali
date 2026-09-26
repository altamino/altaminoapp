.class public final synthetic Lcom/narvii/master/search/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/a;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalPostSearchListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/e;->a:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/e;->a:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->u(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
