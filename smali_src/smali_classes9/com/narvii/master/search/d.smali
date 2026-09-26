.class public final synthetic Lcom/narvii/master/search/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalPostSearchListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/d;->a:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/d;->a:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->t(Lcom/narvii/master/search/GlobalPostSearchListFragment;Ljava/lang/String;)V

    return-void
.end method
