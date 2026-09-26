.class final synthetic Lcom/narvii/account/SetEmailFragment$binding$2;
.super Lkotlin/jvm/internal/q;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SetEmailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/q;",
        "Le8/l<",
        "Landroid/view/LayoutInflater;",
        "Lcom/narvii/amino/databinding/FragmentSetEmailBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/account/SetEmailFragment$binding$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/account/SetEmailFragment$binding$2;

    invoke-direct {v0}, Lcom/narvii/account/SetEmailFragment$binding$2;-><init>()V

    sput-object v0, Lcom/narvii/account/SetEmailFragment$binding$2;->INSTANCE:Lcom/narvii/account/SetEmailFragment$binding$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-class v2, Lcom/narvii/amino/databinding/FragmentSetEmailBinding;

    const-string v3, "inflate"

    const-string v4, "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSetEmailBinding;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/q;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSetEmailBinding;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/narvii/amino/databinding/FragmentSetEmailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSetEmailBinding;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/narvii/account/SetEmailFragment$binding$2;->invoke(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSetEmailBinding;

    move-result-object p1

    return-object p1
.end method
