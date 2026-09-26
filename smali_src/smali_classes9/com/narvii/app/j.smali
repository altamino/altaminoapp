.class public final synthetic Lcom/narvii/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/j;->a:Lcom/narvii/app/NVFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/j;->a:Lcom/narvii/app/NVFragment;

    check-cast p1, Lcom/narvii/app/LifecycleListener;

    invoke-static {v0, p1}, Lcom/narvii/app/NVFragment;->f(Lcom/narvii/app/NVFragment;Lcom/narvii/app/LifecycleListener;)V

    return-void
.end method
