.class public final synthetic Ly5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly5/a;->a:Ljava/lang/String;

    check-cast p1, Lcom/narvii/language/LanguageChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/language/ContentLanguageService;->a(Ljava/lang/String;Lcom/narvii/language/LanguageChangeListener;)V

    return-void
.end method
