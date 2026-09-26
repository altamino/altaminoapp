.class public interface abstract Lcom/google/firebase/sessions/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/h0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/h0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/h0$a;->$$INSTANCE:Lcom/google/firebase/sessions/h0$a;

    sput-object v0, Lcom/google/firebase/sessions/h0;->Companion:Lcom/google/firebase/sessions/h0$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Messenger;Landroid/content/ServiceConnection;)V
    .param p1    # Landroid/os/Messenger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
