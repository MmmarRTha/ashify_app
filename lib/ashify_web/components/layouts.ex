defmodule AshifyWeb.Layouts do
  @moduledoc """
  This module holds layouts and related functionality
  used by your application.
  """
  use AshifyWeb, :html

  import AshifyWeb.CoreComponents

  # Embed all files in layouts/* within this module.
  # The default root.html.heex file contains the HTML
  # skeleton of your application, namely HTML headers
  # and other static content.
  embed_templates "layouts/*"

  def app(assigns) do
    ~H"""
    <div class="w-full max-w-6xl m-auto">
      <div class="flex items-center w-full p-4 pb-2 border-b-2 border-primary-600">
        <div class="flex-1 mr-4">
          <.link navigate={~p"/"}>
            <.icon
              name="hero-musical-note-solid"
              class="w-8 h-8 bg-accent-400 inline-block align-middle"
            />
            <span class="text-2xl font-bold text-accent-400 inline-block align-middle mb-1 ml-1">
              Ashify
            </span>
          </.link>
        </div>
      </div>
      <div class="px-4">
        <.flash_group flash={@flash} />

        {render_slot(@inner_block)}
      </div>
    </div>
    """
  end

  def user_info(assigns) do
    ~H"""
    <div class="flex space-x-3 relative items-center">
      <%= if @current_user do %>
        {live_render(@socket, AshifyWeb.NotificationsLive, sticky: true, id: :notifications_container)}

        <div class="!ml-8">
          <div
            tabindex="0"
            role="button"
            class="pr-0"
            phx-click="toggle-user-menu"
            phx-click-away={hide("#user-menu")}
          >
            <.avatar user={@current_user} />
          </div>
          <ul
            id="user-menu"
            tabindex="0"
            class="hidden z-[1] p-2 mt-3 shadow rounded-lg w-fit-content absolute right-0 bg-white text-sm"
          >
            <li class="border-b border-gray-300 p-2 pt-0">
              <p>
                Signed in as <strong class="whitespace-nowrap">{@current_user.email}</strong>
              </p>
            </li>
            <li class="p-2 pb-0"><.link navigate="/sign-out" class="block">Sign out</.link></li>
          </ul>
        </div>
      <% else %>
        <.button_link navigate="/sign-in" size="xs">
          Sign In
        </.button_link>
        <span>or</span>
        <.button_link navigate="/register" size="xs">
          Register
        </.button_link>
      <% end %>
    </div>
    """
  end

  @doc """
  Shows the flash group with standard titles and content.

  ## Examples

      <.flash_group flash={@flash} />
  """
  attr :flash, :map, required: true, doc: "the map of flash messages"
  attr :id, :string, default: "flash-group", doc: "the optional id of flash container"

  def flash_group(assigns) do
    ~H"""
    <div id={@id} aria-live="polite">
      <.flash kind={:info} flash={@flash} />
      <.flash kind={:error} flash={@flash} />

      <.flash
        id="client-error"
        kind={:error}
        title={gettext("We can't find the internet")}
        phx-disconnected={show(".phx-client-error #client-error") |> JS.remove_attribute("hidden")}
        phx-connected={hide("#client-error") |> JS.set_attribute({"hidden", ""})}
        hidden
      >
        {gettext("Attempting to reconnect")}
        <.icon name="hero-arrow-path" class="ml-1 size-3 motion-safe:animate-spin" />
      </.flash>

      <.flash
        id="server-error"
        kind={:error}
        title={gettext("Something went wrong!")}
        phx-disconnected={show(".phx-server-error #server-error") |> JS.remove_attribute("hidden")}
        phx-connected={hide("#server-error") |> JS.set_attribute({"hidden", ""})}
        hidden
      >
        {gettext("Attempting to reconnect")}
        <.icon name="hero-arrow-path" class="ml-1 size-3 motion-safe:animate-spin" />
      </.flash>
    </div>
    """
  end
end
