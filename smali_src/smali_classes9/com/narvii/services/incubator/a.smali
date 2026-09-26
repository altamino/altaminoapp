.class public final synthetic Lcom/narvii/services/incubator/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/services/incubator/a;->a:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/services/incubator/a;->a:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    invoke-static {v0}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->a(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V

    return-void
.end method
