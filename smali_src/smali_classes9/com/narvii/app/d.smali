.class public final synthetic Lcom/narvii/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/d;->a:Lcom/narvii/app/NVActivity;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/d;->a:Lcom/narvii/app/NVActivity;

    check-cast p1, Lcom/narvii/app/LifecycleListener;

    invoke-static {v0, p1}, Lcom/narvii/app/NVActivity;->i(Lcom/narvii/app/NVActivity;Lcom/narvii/app/LifecycleListener;)V

    return-void
.end method
