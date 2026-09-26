.class public interface abstract Lcom/google/firebase/sessions/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/w$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/w$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/w$a;->$$INSTANCE:Lcom/google/firebase/sessions/w$a;

    sput-object v0, Lcom/google/firebase/sessions/w;->Companion:Lcom/google/firebase/sessions/w$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
