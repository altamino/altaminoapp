.class public final synthetic Lja/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lja/h;->a:Ljava/lang/String;

    check-cast p1, Lqa/b;

    invoke-static {v0, p1}, Lja/i;->a(Ljava/lang/String;Lqa/b;)Lx9/c;

    move-result-object p1

    return-object p1
.end method
