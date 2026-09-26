.class public final synthetic Lcom/narvii/master/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/j;->a:Lcom/narvii/master/MasterActivity;

    iput-boolean p2, p0, Lcom/narvii/master/j;->b:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/j;->a:Lcom/narvii/master/MasterActivity;

    iget-boolean v1, p0, Lcom/narvii/master/j;->b:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/MasterActivity;->u(Lcom/narvii/master/MasterActivity;ZLjava/lang/Boolean;)V

    return-void
.end method
