.class public final synthetic Lcom/narvii/master/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/n;->a:Lcom/narvii/master/MasterActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/n;->a:Lcom/narvii/master/MasterActivity;

    check-cast p1, Lcom/narvii/master/launch/InstallType;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->y(Lcom/narvii/master/MasterActivity;Lcom/narvii/master/launch/InstallType;)V

    return-void
.end method
