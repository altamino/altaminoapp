.class public final synthetic Lcom/narvii/community/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/community/VisitorBarHost;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/a0;->a:Lcom/narvii/community/VisitorBarHost;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/community/a0;->a:Lcom/narvii/community/VisitorBarHost;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/narvii/community/VisitorBarHost;->b(Lcom/narvii/community/VisitorBarHost;Ljava/lang/Boolean;)V

    return-void
.end method
