.class public Lcom/estrongs/android/pop/esclasses/ESResourceActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/estrongs/android/pop/app/d/a;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/esclasses/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public G()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public a(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/esclasses/g;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/esclasses/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/o;-><init>(Lcom/estrongs/android/pop/esclasses/ESResourceActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a(II)V

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/esclasses/g;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/p;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/g;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/p;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/p;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/p;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/p;->a()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/i/a;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->b(Landroid/content/Context;)V

    sget-object v2, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/j/c;->b()Z

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/j/c;->a()Z

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->c()V

    sget-object v2, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/l;-><init>(Lcom/estrongs/android/pop/app/d/b;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/esclasses/l;->a(ILandroid/view/View;)V

    return-void
.end method
