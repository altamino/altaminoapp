.class public final synthetic Lcom/narvii/util/debug/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/debug/LarkRobot;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/debug/LarkRobot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/debug/a;->a:Lcom/narvii/util/debug/LarkRobot;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/util/debug/a;->a:Lcom/narvii/util/debug/LarkRobot;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-static {v0, p1}, Lcom/narvii/util/debug/LarkRobot;->a(Lcom/narvii/util/debug/LarkRobot;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
