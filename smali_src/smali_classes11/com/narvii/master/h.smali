.class public final synthetic Lcom/narvii/master/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/viewmodel/repository/AccountRepository;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/h;->a:Lcom/narvii/master/MasterActivity;

    return-void
.end method


# virtual methods
.method public final hasAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/h;->a:Lcom/narvii/master/MasterActivity;

    invoke-static {v0}, Lcom/narvii/master/MasterActivity;->A(Lcom/narvii/master/MasterActivity;)Z

    move-result v0

    return v0
.end method
