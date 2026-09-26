.class public final synthetic Lcom/narvii/logging/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/logging/LoggingServiceImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/logging/LoggingServiceImpl;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/b;->a:Lcom/narvii/logging/LoggingServiceImpl;

    iput-object p2, p0, Lcom/narvii/logging/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/logging/b;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/logging/b;->a:Lcom/narvii/logging/LoggingServiceImpl;

    iget-object v1, p0, Lcom/narvii/logging/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/logging/b;->c:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/narvii/logging/LoggingServiceImpl;->a(Lcom/narvii/logging/LoggingServiceImpl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
